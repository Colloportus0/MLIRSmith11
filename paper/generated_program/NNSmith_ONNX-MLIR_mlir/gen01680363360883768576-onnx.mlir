module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(-2147483648 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(-1 : i64) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.mlir.constant(4 : index) : i64
    %22 = llvm.mlir.null : !llvm.ptr<i64>
    %23 = llvm.getelementptr %22[%21] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %24 = llvm.ptrtoint %23 : !llvm.ptr<i64> to i64
    %25 = llvm.mlir.constant(16 : index) : i64
    %26 = llvm.add %24, %25  : i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr<i8>
    %28 = llvm.bitcast %27 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %29 = llvm.ptrtoint %28 : !llvm.ptr<i64> to i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.sub %25, %30  : i64
    %32 = llvm.add %29, %31  : i64
    %33 = llvm.urem %32, %25  : i64
    %34 = llvm.sub %32, %33  : i64
    %35 = llvm.inttoptr %34 : i64 to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %37 = llvm.insertvalue %28, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %16, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.insertvalue %17, %41[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.insertvalue %18, %42[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.insertvalue %20, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%47 : i64)
  ^bb1(%50: i64):  // 2 preds: ^bb0, ^bb8
    %51 = llvm.icmp "slt" %50, %48 : i64
    llvm.cond_br %51, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%52 : i64)
  ^bb3(%55: i64):  // 2 preds: ^bb2, ^bb7
    %56 = llvm.icmp "slt" %55, %53 : i64
    llvm.cond_br %56, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%57 : i64)
  ^bb5(%60: i64):  // 2 preds: ^bb4, ^bb6
    %61 = llvm.icmp "slt" %60, %58 : i64
    llvm.cond_br %61, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %62 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.mlir.constant(4 : index) : i64
    %64 = llvm.mul %50, %63  : i64
    %65 = llvm.mlir.constant(2 : index) : i64
    %66 = llvm.mul %55, %65  : i64
    %67 = llvm.add %64, %66  : i64
    %68 = llvm.add %67, %60  : i64
    %69 = llvm.getelementptr %62[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %69 : !llvm.ptr<i64>
    %70 = llvm.add %60, %59  : i64
    llvm.br ^bb5(%70 : i64)
  ^bb7:  // pred: ^bb5
    %71 = llvm.add %55, %54  : i64
    llvm.br ^bb3(%71 : i64)
  ^bb8:  // pred: ^bb3
    %72 = llvm.add %50, %49  : i64
    llvm.br ^bb1(%72 : i64)
  ^bb9:  // pred: ^bb1
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%73 : i64)
  ^bb10(%76: i64):  // 2 preds: ^bb9, ^bb20
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%78 : i64)
  ^bb12(%81: i64):  // 2 preds: ^bb11, ^bb19
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%83 : i64)
  ^bb14(%86: i64):  // 2 preds: ^bb13, ^bb18
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%88 : i64)
  ^bb16(%91: i64):  // 2 preds: ^bb15, ^bb17
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %93 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mul %76, %94  : i64
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mul %81, %96  : i64
    %98 = llvm.add %95, %97  : i64
    %99 = llvm.add %98, %86  : i64
    %100 = llvm.add %99, %91  : i64
    %101 = llvm.getelementptr %93[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %102 = llvm.load %101 : !llvm.ptr<i32>
    %103 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.mlir.constant(4 : index) : i64
    %105 = llvm.mul %76, %104  : i64
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mul %81, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.add %108, %86  : i64
    %110 = llvm.getelementptr %103[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %111 = llvm.load %110 : !llvm.ptr<i64>
    %112 = llvm.icmp "slt" %111, %14 : i64
    %113 = llvm.select %112, %14, %111 : i1, i64
    %114 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.mul %76, %115  : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mul %81, %117  : i64
    %119 = llvm.add %116, %118  : i64
    %120 = llvm.add %119, %86  : i64
    %121 = llvm.add %120, %113  : i64
    %122 = llvm.getelementptr %114[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.icmp "slt" %102, %123 : i32
    %125 = llvm.select %124, %91, %113 : i1, i64
    %126 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mul %76, %127  : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mul %81, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.add %131, %86  : i64
    %133 = llvm.getelementptr %126[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %133 : !llvm.ptr<i64>
    %134 = llvm.add %91, %90  : i64
    llvm.br ^bb16(%134 : i64)
  ^bb18:  // pred: ^bb16
    %135 = llvm.add %86, %85  : i64
    llvm.br ^bb14(%135 : i64)
  ^bb19:  // pred: ^bb14
    %136 = llvm.add %81, %80  : i64
    llvm.br ^bb12(%136 : i64)
  ^bb20:  // pred: ^bb12
    %137 = llvm.add %76, %75  : i64
    llvm.br ^bb10(%137 : i64)
  ^bb21:  // pred: ^bb10
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(2 : index) : i64
    %142 = llvm.mlir.null : !llvm.ptr<i64>
    %143 = llvm.getelementptr %142[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.ptrtoint %143 : !llvm.ptr<i64> to i64
    %145 = llvm.mlir.constant(16 : index) : i64
    %146 = llvm.add %144, %145  : i64
    %147 = llvm.call @malloc(%146) : (i64) -> !llvm.ptr<i8>
    %148 = llvm.bitcast %147 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %149 = llvm.ptrtoint %148 : !llvm.ptr<i64> to i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.sub %145, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.urem %152, %145  : i64
    %154 = llvm.sub %152, %153  : i64
    %155 = llvm.inttoptr %154 : i64 to !llvm.ptr<i64>
    %156 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %157 = llvm.insertvalue %148, %156[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %158 = llvm.insertvalue %155, %157[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.insertvalue %159, %158[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.insertvalue %138, %160[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.insertvalue %139, %161[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %139, %162[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %140, %163[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%165 : i64)
  ^bb22(%168: i64):  // 2 preds: ^bb21, ^bb26
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb23, ^bb27
  ^bb23:  // pred: ^bb22
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%170 : i64)
  ^bb24(%173: i64):  // 2 preds: ^bb23, ^bb25
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb25, ^bb26
  ^bb25:  // pred: ^bb24
    %175 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mul %168, %176  : i64
    %178 = llvm.add %177, %173  : i64
    %179 = llvm.getelementptr %175[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %179 : !llvm.ptr<i64>
    %180 = llvm.add %173, %172  : i64
    llvm.br ^bb24(%180 : i64)
  ^bb26:  // pred: ^bb24
    %181 = llvm.add %168, %167  : i64
    llvm.br ^bb22(%181 : i64)
  ^bb27:  // pred: ^bb22
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%182 : i64)
  ^bb28(%185: i64):  // 2 preds: ^bb27, ^bb35
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb29, ^bb36
  ^bb29:  // pred: ^bb28
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%187 : i64)
  ^bb30(%190: i64):  // 2 preds: ^bb29, ^bb34
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb31, ^bb35
  ^bb31:  // pred: ^bb30
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%192 : i64)
  ^bb32(%195: i64):  // 2 preds: ^bb31, ^bb33
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb33, ^bb34
  ^bb33:  // pred: ^bb32
    %197 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mul %185, %198  : i64
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %190, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.add %202, %195  : i64
    %204 = llvm.getelementptr %197[%203] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %205 = llvm.load %204 : !llvm.ptr<i64>
    %206 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mul %185, %207  : i64
    %209 = llvm.add %208, %190  : i64
    %210 = llvm.getelementptr %206[%209] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %211 = llvm.load %210 : !llvm.ptr<i64>
    %212 = llvm.icmp "slt" %211, %14 : i64
    %213 = llvm.select %212, %14, %211 : i1, i64
    %214 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %215 = llvm.mlir.constant(4 : index) : i64
    %216 = llvm.mul %185, %215  : i64
    %217 = llvm.mlir.constant(2 : index) : i64
    %218 = llvm.mul %190, %217  : i64
    %219 = llvm.add %216, %218  : i64
    %220 = llvm.add %219, %213  : i64
    %221 = llvm.getelementptr %214[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %222 = llvm.load %221 : !llvm.ptr<i64>
    %223 = llvm.icmp "slt" %205, %222 : i64
    %224 = llvm.select %223, %195, %213 : i1, i64
    %225 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %185, %226  : i64
    %228 = llvm.add %227, %190  : i64
    %229 = llvm.getelementptr %225[%228] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %224, %229 : !llvm.ptr<i64>
    %230 = llvm.add %195, %194  : i64
    llvm.br ^bb32(%230 : i64)
  ^bb34:  // pred: ^bb32
    %231 = llvm.add %190, %189  : i64
    llvm.br ^bb30(%231 : i64)
  ^bb35:  // pred: ^bb30
    %232 = llvm.add %185, %184  : i64
    llvm.br ^bb28(%232 : i64)
  ^bb36:  // pred: ^bb28
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.null : !llvm.ptr<i64>
    %237 = llvm.getelementptr %236[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i64> to i64
    %239 = llvm.mlir.constant(16 : index) : i64
    %240 = llvm.add %238, %239  : i64
    %241 = llvm.call @malloc(%240) : (i64) -> !llvm.ptr<i8>
    %242 = llvm.bitcast %241 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i64> to i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.sub %239, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.urem %246, %239  : i64
    %248 = llvm.sub %246, %247  : i64
    %249 = llvm.inttoptr %248 : i64 to !llvm.ptr<i64>
    %250 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %251 = llvm.insertvalue %242, %250[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %252 = llvm.insertvalue %249, %251[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.insertvalue %253, %252[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %255 = llvm.insertvalue %233, %254[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %256 = llvm.insertvalue %234, %255[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %257 = llvm.insertvalue %234, %256[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %258 = llvm.insertvalue %235, %257[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%259 : i64)
  ^bb37(%262: i64):  // 2 preds: ^bb36, ^bb41
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb38, ^bb42
  ^bb38:  // pred: ^bb37
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%264 : i64)
  ^bb39(%267: i64):  // 2 preds: ^bb38, ^bb40
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb40, ^bb41
  ^bb40:  // pred: ^bb39
    %269 = llvm.extractvalue %164[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %262, %270  : i64
    %272 = llvm.add %271, %267  : i64
    %273 = llvm.getelementptr %269[%272] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.add %262, %267  : i64
    %277 = llvm.getelementptr %275[%276] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %274, %277 : !llvm.ptr<i64>
    %278 = llvm.add %267, %266  : i64
    llvm.br ^bb39(%278 : i64)
  ^bb41:  // pred: ^bb39
    %279 = llvm.add %262, %261  : i64
    llvm.br ^bb37(%279 : i64)
  ^bb42:  // pred: ^bb37
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(4 : index) : i64
    %285 = llvm.mlir.constant(4 : index) : i64
    %286 = llvm.mlir.null : !llvm.ptr<i1>
    %287 = llvm.getelementptr %286[%285] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i1> to i64
    %289 = llvm.mlir.constant(16 : index) : i64
    %290 = llvm.add %288, %289  : i64
    %291 = llvm.call @malloc(%290) : (i64) -> !llvm.ptr<i8>
    %292 = llvm.bitcast %291 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %293 = llvm.ptrtoint %292 : !llvm.ptr<i1> to i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.sub %289, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.urem %296, %289  : i64
    %298 = llvm.sub %296, %297  : i64
    %299 = llvm.inttoptr %298 : i64 to !llvm.ptr<i1>
    %300 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %301 = llvm.insertvalue %292, %300[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %302 = llvm.insertvalue %299, %301[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.insertvalue %303, %302[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %305 = llvm.insertvalue %280, %304[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %306 = llvm.insertvalue %281, %305[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %307 = llvm.insertvalue %282, %306[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %308 = llvm.insertvalue %284, %307[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %309 = llvm.insertvalue %282, %308[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %310 = llvm.insertvalue %283, %309[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%311 : i64)
  ^bb43(%314: i64):  // 2 preds: ^bb42, ^bb50
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%316 : i64)
  ^bb45(%319: i64):  // 2 preds: ^bb44, ^bb49
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%321 : i64)
  ^bb47(%324: i64):  // 2 preds: ^bb46, ^bb48
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %326 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %314, %327  : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mul %319, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.add %331, %324  : i64
    %333 = llvm.getelementptr %326[%332] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.extractvalue %258[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %336 = llvm.add %13, %13  : i64
    %337 = llvm.getelementptr %335[%336] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %338 = llvm.load %337 : !llvm.ptr<i64>
    %339 = llvm.icmp "eq" %334, %338 : i64
    %340 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mul %314, %341  : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mul %319, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.add %345, %324  : i64
    %347 = llvm.getelementptr %340[%346] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %339, %347 : !llvm.ptr<i1>
    %348 = llvm.add %324, %323  : i64
    llvm.br ^bb47(%348 : i64)
  ^bb49:  // pred: ^bb47
    %349 = llvm.add %319, %318  : i64
    llvm.br ^bb45(%349 : i64)
  ^bb50:  // pred: ^bb45
    %350 = llvm.add %314, %313  : i64
    llvm.br ^bb43(%350 : i64)
  ^bb51:  // pred: ^bb43
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(4 : index) : i64
    %356 = llvm.mlir.null : !llvm.ptr<i32>
    %357 = llvm.getelementptr %356[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i32> to i64
    %359 = llvm.mlir.constant(16 : index) : i64
    %360 = llvm.add %358, %359  : i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr<i8>
    %362 = llvm.bitcast %361 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i32> to i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.sub %359, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.urem %366, %359  : i64
    %368 = llvm.sub %366, %367  : i64
    %369 = llvm.inttoptr %368 : i64 to !llvm.ptr<i32>
    %370 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %371 = llvm.insertvalue %362, %370[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %372 = llvm.insertvalue %369, %371[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.insertvalue %373, %372[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %375 = llvm.insertvalue %351, %374[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %376 = llvm.insertvalue %352, %375[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %377 = llvm.insertvalue %353, %376[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %378 = llvm.insertvalue %352, %377[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.insertvalue %353, %378[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %380 = llvm.insertvalue %354, %379[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %381 = llvm.mlir.constant(0 : index) : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%381 : i64)
  ^bb52(%384: i64):  // 2 preds: ^bb51, ^bb59
    %385 = llvm.icmp "slt" %384, %382 : i64
    llvm.cond_br %385, ^bb53, ^bb60
  ^bb53:  // pred: ^bb52
    %386 = llvm.mlir.constant(0 : index) : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%386 : i64)
  ^bb54(%389: i64):  // 2 preds: ^bb53, ^bb58
    %390 = llvm.icmp "slt" %389, %387 : i64
    llvm.cond_br %390, ^bb55, ^bb59
  ^bb55:  // pred: ^bb54
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%391 : i64)
  ^bb56(%394: i64):  // 2 preds: ^bb55, ^bb57
    %395 = llvm.icmp "slt" %394, %392 : i64
    llvm.cond_br %395, ^bb57, ^bb58
  ^bb57:  // pred: ^bb56
    %396 = llvm.extractvalue %380[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.mlir.constant(2 : index) : i64
    %398 = llvm.mul %384, %397  : i64
    %399 = llvm.add %398, %389  : i64
    %400 = llvm.add %399, %394  : i64
    %401 = llvm.getelementptr %396[%400] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %401 : !llvm.ptr<i32>
    %402 = llvm.add %394, %393  : i64
    llvm.br ^bb56(%402 : i64)
  ^bb58:  // pred: ^bb56
    %403 = llvm.add %389, %388  : i64
    llvm.br ^bb54(%403 : i64)
  ^bb59:  // pred: ^bb54
    %404 = llvm.add %384, %383  : i64
    llvm.br ^bb52(%404 : i64)
  ^bb60:  // pred: ^bb52
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%405 : i64)
  ^bb61(%408: i64):  // 2 preds: ^bb60, ^bb71
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(2 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%410 : i64)
  ^bb63(%413: i64):  // 2 preds: ^bb62, ^bb70
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%415 : i64)
  ^bb65(%418: i64):  // 2 preds: ^bb64, ^bb69
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%420 : i64)
  ^bb67(%423: i64):  // 2 preds: ^bb66, ^bb68
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %425 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(4 : index) : i64
    %427 = llvm.mul %408, %426  : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mul %413, %428  : i64
    %430 = llvm.add %427, %429  : i64
    %431 = llvm.add %430, %418  : i64
    %432 = llvm.add %431, %423  : i64
    %433 = llvm.getelementptr %425[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %434 = llvm.load %433 : !llvm.ptr<i32>
    %435 = llvm.extractvalue %380[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mul %413, %436  : i64
    %438 = llvm.add %437, %418  : i64
    %439 = llvm.add %438, %423  : i64
    %440 = llvm.getelementptr %435[%439] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %441 = llvm.load %440 : !llvm.ptr<i32>
    %442 = llvm.icmp "sgt" %441, %434 : i32
    %443 = llvm.select %442, %441, %434 : i1, i32
    %444 = llvm.extractvalue %380[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mul %413, %445  : i64
    %447 = llvm.add %446, %418  : i64
    %448 = llvm.add %447, %423  : i64
    %449 = llvm.getelementptr %444[%448] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %443, %449 : !llvm.ptr<i32>
    %450 = llvm.add %423, %422  : i64
    llvm.br ^bb67(%450 : i64)
  ^bb69:  // pred: ^bb67
    %451 = llvm.add %418, %417  : i64
    llvm.br ^bb65(%451 : i64)
  ^bb70:  // pred: ^bb65
    %452 = llvm.add %413, %412  : i64
    llvm.br ^bb63(%452 : i64)
  ^bb71:  // pred: ^bb63
    %453 = llvm.add %408, %407  : i64
    llvm.br ^bb61(%453 : i64)
  ^bb72:  // pred: ^bb61
    %454 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %455 = llvm.insertvalue %310, %454[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %456 = llvm.insertvalue %380, %455[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %456 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.getelementptr %50[%103] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %104 : !llvm.ptr<ptr<i8>>
    %105 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %105 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<132 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<132 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

