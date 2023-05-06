module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[4, 5], [6, 5]]], [[[5, 6], [4, 6]]]]> : tensor<2x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %10 = llvm.insertvalue %8, %9[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %8, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.insertvalue %14, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(4 : index) : i64
    %17 = llvm.insertvalue %16, %15[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.insertvalue %18, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(4 : index) : i64
    %21 = llvm.insertvalue %20, %19[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.mlir.constant(8 : index) : i64
    %38 = llvm.mlir.null : !llvm.ptr<i32>
    %39 = llvm.getelementptr %38[%37] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<i32> to i64
    %41 = llvm.mlir.constant(16 : index) : i64
    %42 = llvm.add %40, %41  : i64
    %43 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.sub %41, %46  : i64
    %48 = llvm.add %45, %47  : i64
    %49 = llvm.urem %48, %41  : i64
    %50 = llvm.sub %48, %49  : i64
    %51 = llvm.inttoptr %50 : i64 to !llvm.ptr<i32>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %53 = llvm.insertvalue %44, %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %36, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %35, %61[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %33, %62[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %34, %63[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.mlir.constant(2 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%65 : i64)
  ^bb1(%68: i64):  // 2 preds: ^bb0, ^bb11
    %69 = llvm.icmp "slt" %68, %66 : i64
    llvm.cond_br %69, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%70 : i64)
  ^bb3(%73: i64):  // 2 preds: ^bb2, ^bb10
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%75 : i64)
  ^bb5(%78: i64):  // 2 preds: ^bb4, ^bb9
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%80 : i64)
  ^bb7(%83: i64):  // 2 preds: ^bb6, ^bb8
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %85 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.getelementptr %85[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %87 = llvm.load %86 : !llvm.ptr<i32>
    %88 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(4 : index) : i64
    %90 = llvm.mul %68, %89  : i64
    %91 = llvm.mlir.constant(4 : index) : i64
    %92 = llvm.mul %73, %91  : i64
    %93 = llvm.add %90, %92  : i64
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mul %78, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.add %96, %83  : i64
    %98 = llvm.getelementptr %88[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.load %98 : !llvm.ptr<i32>
    %100 = llvm.add %87, %99  : i32
    %101 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(4 : index) : i64
    %103 = llvm.mul %68, %102  : i64
    %104 = llvm.mlir.constant(4 : index) : i64
    %105 = llvm.mul %73, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mul %78, %107  : i64
    %109 = llvm.add %106, %108  : i64
    %110 = llvm.add %109, %83  : i64
    %111 = llvm.getelementptr %101[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %100, %111 : !llvm.ptr<i32>
    %112 = llvm.add %83, %82  : i64
    llvm.br ^bb7(%112 : i64)
  ^bb9:  // pred: ^bb7
    %113 = llvm.add %78, %77  : i64
    llvm.br ^bb5(%113 : i64)
  ^bb10:  // pred: ^bb5
    %114 = llvm.add %73, %72  : i64
    llvm.br ^bb3(%114 : i64)
  ^bb11:  // pred: ^bb3
    %115 = llvm.add %68, %67  : i64
    llvm.br ^bb1(%115 : i64)
  ^bb12:  // pred: ^bb1
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(4 : index) : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mlir.constant(8 : index) : i64
    %124 = llvm.mlir.null : !llvm.ptr<i1>
    %125 = llvm.getelementptr %124[%123] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %126 = llvm.ptrtoint %125 : !llvm.ptr<i1> to i64
    %127 = llvm.mlir.constant(16 : index) : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.call @malloc(%128) : (i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i1> to i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.sub %127, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.urem %134, %127  : i64
    %136 = llvm.sub %134, %135  : i64
    %137 = llvm.inttoptr %136 : i64 to !llvm.ptr<i1>
    %138 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %139 = llvm.insertvalue %130, %138[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %116, %142[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %117, %143[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %122, %146[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %121, %147[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %119, %148[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %120, %149[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%151 : i64)
  ^bb13(%154: i64):  // 2 preds: ^bb12, ^bb23
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%156 : i64)
  ^bb15(%159: i64):  // 2 preds: ^bb14, ^bb22
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%161 : i64)
  ^bb17(%164: i64):  // 2 preds: ^bb16, ^bb21
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%166 : i64)
  ^bb19(%169: i64):  // 2 preds: ^bb18, ^bb20
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %171 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mul %154, %172  : i64
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mul %159, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mul %164, %177  : i64
    %179 = llvm.add %176, %178  : i64
    %180 = llvm.add %179, %169  : i64
    %181 = llvm.getelementptr %171[%180] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %182 = llvm.load %181 : !llvm.ptr<i32>
    %183 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(4 : index) : i64
    %185 = llvm.mul %154, %184  : i64
    %186 = llvm.mlir.constant(4 : index) : i64
    %187 = llvm.mul %159, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mul %164, %189  : i64
    %191 = llvm.add %188, %190  : i64
    %192 = llvm.add %191, %169  : i64
    %193 = llvm.getelementptr %183[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.icmp "sgt" %182, %194 : i32
    %196 = llvm.extractvalue %150[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mul %154, %197  : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mul %159, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mul %164, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %169  : i64
    %206 = llvm.getelementptr %196[%205] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %195, %206 : !llvm.ptr<i1>
    %207 = llvm.add %169, %168  : i64
    llvm.br ^bb19(%207 : i64)
  ^bb21:  // pred: ^bb19
    %208 = llvm.add %164, %163  : i64
    llvm.br ^bb17(%208 : i64)
  ^bb22:  // pred: ^bb17
    %209 = llvm.add %159, %158  : i64
    llvm.br ^bb15(%209 : i64)
  ^bb23:  // pred: ^bb15
    %210 = llvm.add %154, %153  : i64
    llvm.br ^bb13(%210 : i64)
  ^bb24:  // pred: ^bb13
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(4 : index) : i64
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mlir.constant(8 : index) : i64
    %219 = llvm.mlir.null : !llvm.ptr<i1>
    %220 = llvm.getelementptr %219[%218] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %221 = llvm.ptrtoint %220 : !llvm.ptr<i1> to i64
    %222 = llvm.mlir.constant(16 : index) : i64
    %223 = llvm.add %221, %222  : i64
    %224 = llvm.call @malloc(%223) : (i64) -> !llvm.ptr<i8>
    %225 = llvm.bitcast %224 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %226 = llvm.ptrtoint %225 : !llvm.ptr<i1> to i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.sub %222, %227  : i64
    %229 = llvm.add %226, %228  : i64
    %230 = llvm.urem %229, %222  : i64
    %231 = llvm.sub %229, %230  : i64
    %232 = llvm.inttoptr %231 : i64 to !llvm.ptr<i1>
    %233 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %234 = llvm.insertvalue %225, %233[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %232, %234[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.insertvalue %236, %235[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %211, %237[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %212, %238[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %214, %240[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %217, %241[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %216, %242[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %214, %243[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %215, %244[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%246 : i64)
  ^bb25(%249: i64):  // 2 preds: ^bb24, ^bb35
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%251 : i64)
  ^bb27(%254: i64):  // 2 preds: ^bb26, ^bb34
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%256 : i64)
  ^bb29(%259: i64):  // 2 preds: ^bb28, ^bb33
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(2 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%261 : i64)
  ^bb31(%264: i64):  // 2 preds: ^bb30, ^bb32
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %266 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mul %249, %267  : i64
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mul %254, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mul %259, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.add %274, %264  : i64
    %276 = llvm.getelementptr %266[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %277 = llvm.load %276 : !llvm.ptr<i32>
    %278 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mul %249, %279  : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mul %254, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %259, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.add %286, %264  : i64
    %288 = llvm.getelementptr %278[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %289 = llvm.load %288 : !llvm.ptr<i32>
    %290 = llvm.icmp "eq" %277, %289 : i32
    %291 = llvm.extractvalue %245[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mul %249, %292  : i64
    %294 = llvm.mlir.constant(4 : index) : i64
    %295 = llvm.mul %254, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %259, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.add %299, %264  : i64
    %301 = llvm.getelementptr %291[%300] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %290, %301 : !llvm.ptr<i1>
    %302 = llvm.add %264, %263  : i64
    llvm.br ^bb31(%302 : i64)
  ^bb33:  // pred: ^bb31
    %303 = llvm.add %259, %258  : i64
    llvm.br ^bb29(%303 : i64)
  ^bb34:  // pred: ^bb29
    %304 = llvm.add %254, %253  : i64
    llvm.br ^bb27(%304 : i64)
  ^bb35:  // pred: ^bb27
    %305 = llvm.add %249, %248  : i64
    llvm.br ^bb25(%305 : i64)
  ^bb36:  // pred: ^bb25
    %306 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %307 = llvm.insertvalue %150, %306[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %308 = llvm.insertvalue %245, %307[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %308 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(4 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %38[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.getelementptr %39[%45] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %48, %49 : !llvm.ptr<i64>
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.getelementptr %38[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %39[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %54 : !llvm.ptr<i64>
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %38[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %39[%55] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.getelementptr %29[%60] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %61 : !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(4 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(3 : i64) : i64
    %88 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %70[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %71[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.getelementptr %29[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %93 : !llvm.ptr<ptr<i8>>
    %94 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %94 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<139 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<139 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

