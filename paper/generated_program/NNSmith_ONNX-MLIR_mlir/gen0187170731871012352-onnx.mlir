module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 3 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [5 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
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
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(-1 : i64) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.null : !llvm.ptr<i64>
    %20 = llvm.getelementptr %19[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.ptrtoint %20 : !llvm.ptr<i64> to i64
    %22 = llvm.mlir.constant(16 : index) : i64
    %23 = llvm.add %21, %22  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<i64> to i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.sub %22, %27  : i64
    %29 = llvm.add %26, %28  : i64
    %30 = llvm.urem %29, %22  : i64
    %31 = llvm.sub %29, %30  : i64
    %32 = llvm.inttoptr %31 : i64 to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %34 = llvm.insertvalue %25, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %15, %37[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.insertvalue %16, %38[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %40 = llvm.insertvalue %17, %39[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.insertvalue %16, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %42 = llvm.insertvalue %17, %41[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %43 = llvm.insertvalue %18, %42[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%44 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb8
    %48 = llvm.icmp "slt" %47, %45 : i64
    llvm.cond_br %48, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%49 : i64)
  ^bb3(%52: i64):  // 2 preds: ^bb2, ^bb7
    %53 = llvm.icmp "slt" %52, %50 : i64
    llvm.cond_br %53, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%54 : i64)
  ^bb5(%57: i64):  // 2 preds: ^bb4, ^bb6
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %59 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %60 = llvm.add %47, %52  : i64
    %61 = llvm.add %60, %57  : i64
    %62 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %62 : !llvm.ptr<i64>
    %63 = llvm.add %57, %56  : i64
    llvm.br ^bb5(%63 : i64)
  ^bb7:  // pred: ^bb5
    %64 = llvm.add %52, %51  : i64
    llvm.br ^bb3(%64 : i64)
  ^bb8:  // pred: ^bb3
    %65 = llvm.add %47, %46  : i64
    llvm.br ^bb1(%65 : i64)
  ^bb9:  // pred: ^bb1
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%66 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb20
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%71 : i64)
  ^bb12(%74: i64):  // 2 preds: ^bb11, ^bb19
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%76 : i64)
  ^bb14(%79: i64):  // 2 preds: ^bb13, ^bb18
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%81 : i64)
  ^bb16(%84: i64):  // 2 preds: ^bb15, ^bb17
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %86 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.add %69, %74  : i64
    %88 = llvm.add %87, %79  : i64
    %89 = llvm.add %88, %84  : i64
    %90 = llvm.getelementptr %86[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %91 = llvm.load %90 : !llvm.ptr<i32>
    %92 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.add %74, %79  : i64
    %94 = llvm.add %93, %84  : i64
    %95 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.icmp "slt" %96, %13 : i64
    %98 = llvm.select %97, %13, %96 : i1, i64
    %99 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.add %98, %74  : i64
    %101 = llvm.add %100, %79  : i64
    %102 = llvm.add %101, %84  : i64
    %103 = llvm.getelementptr %99[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %104 = llvm.load %103 : !llvm.ptr<i32>
    %105 = llvm.icmp "slt" %91, %104 : i32
    %106 = llvm.select %105, %69, %98 : i1, i64
    %107 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %108 = llvm.add %74, %79  : i64
    %109 = llvm.add %108, %84  : i64
    %110 = llvm.getelementptr %107[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %110 : !llvm.ptr<i64>
    %111 = llvm.add %84, %83  : i64
    llvm.br ^bb16(%111 : i64)
  ^bb18:  // pred: ^bb16
    %112 = llvm.add %79, %78  : i64
    llvm.br ^bb14(%112 : i64)
  ^bb19:  // pred: ^bb14
    %113 = llvm.add %74, %73  : i64
    llvm.br ^bb12(%113 : i64)
  ^bb20:  // pred: ^bb12
    %114 = llvm.add %69, %68  : i64
    llvm.br ^bb10(%114 : i64)
  ^bb21:  // pred: ^bb10
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(3 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(3 : index) : i64
    %120 = llvm.mlir.null : !llvm.ptr<i64>
    %121 = llvm.getelementptr %120[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i64> to i64
    %123 = llvm.mlir.constant(16 : index) : i64
    %124 = llvm.add %122, %123  : i64
    %125 = llvm.call @malloc(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.bitcast %125 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i64> to i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.sub %123, %128  : i64
    %130 = llvm.add %127, %129  : i64
    %131 = llvm.urem %130, %123  : i64
    %132 = llvm.sub %130, %131  : i64
    %133 = llvm.inttoptr %132 : i64 to !llvm.ptr<i64>
    %134 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %135 = llvm.insertvalue %126, %134[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.insertvalue %133, %135[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.insertvalue %137, %136[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.insertvalue %115, %138[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.insertvalue %116, %139[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.insertvalue %117, %140[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.insertvalue %116, %141[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.insertvalue %117, %142[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.insertvalue %118, %143[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%145 : i64)
  ^bb22(%148: i64):  // 2 preds: ^bb21, ^bb29
    %149 = llvm.icmp "slt" %148, %146 : i64
    llvm.cond_br %149, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    %152 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%150 : i64)
  ^bb24(%153: i64):  // 2 preds: ^bb23, ^bb28
    %154 = llvm.icmp "slt" %153, %151 : i64
    llvm.cond_br %154, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%155 : i64)
  ^bb26(%158: i64):  // 2 preds: ^bb25, ^bb27
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %160 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %161 = llvm.add %148, %153  : i64
    %162 = llvm.add %161, %158  : i64
    %163 = llvm.getelementptr %160[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.load %163 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.mlir.constant(3 : index) : i64
    %167 = llvm.mul %148, %166  : i64
    %168 = llvm.add %167, %153  : i64
    %169 = llvm.add %168, %158  : i64
    %170 = llvm.getelementptr %165[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %170 : !llvm.ptr<i64>
    %171 = llvm.add %158, %157  : i64
    llvm.br ^bb26(%171 : i64)
  ^bb28:  // pred: ^bb26
    %172 = llvm.add %153, %152  : i64
    llvm.br ^bb24(%172 : i64)
  ^bb29:  // pred: ^bb24
    %173 = llvm.add %148, %147  : i64
    llvm.br ^bb22(%173 : i64)
  ^bb30:  // pred: ^bb22
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%174 : i64)
  ^bb31(%177: i64):  // 2 preds: ^bb30, ^bb38
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%179 : i64)
  ^bb33(%182: i64):  // 2 preds: ^bb32, ^bb37
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%184 : i64)
  ^bb35(%187: i64):  // 2 preds: ^bb34, ^bb36
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.add %182, %189  : i64
    %191 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %192 = llvm.add %177, %182  : i64
    %193 = llvm.add %192, %187  : i64
    %194 = llvm.getelementptr %191[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %195 = llvm.load %194 : !llvm.ptr<i64>
    %196 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %197 = llvm.mlir.constant(3 : index) : i64
    %198 = llvm.mul %177, %197  : i64
    %199 = llvm.add %198, %190  : i64
    %200 = llvm.add %199, %187  : i64
    %201 = llvm.getelementptr %196[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %195, %201 : !llvm.ptr<i64>
    %202 = llvm.add %187, %186  : i64
    llvm.br ^bb35(%202 : i64)
  ^bb37:  // pred: ^bb35
    %203 = llvm.add %182, %181  : i64
    llvm.br ^bb33(%203 : i64)
  ^bb38:  // pred: ^bb33
    %204 = llvm.add %177, %176  : i64
    llvm.br ^bb31(%204 : i64)
  ^bb39:  // pred: ^bb31
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%205 : i64)
  ^bb40(%208: i64):  // 2 preds: ^bb39, ^bb47
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb41, ^bb48
  ^bb41:  // pred: ^bb40
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%210 : i64)
  ^bb42(%213: i64):  // 2 preds: ^bb41, ^bb46
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb43, ^bb47
  ^bb43:  // pred: ^bb42
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%215 : i64)
  ^bb44(%218: i64):  // 2 preds: ^bb43, ^bb45
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb45, ^bb46
  ^bb45:  // pred: ^bb44
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.add %213, %220  : i64
    %222 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.add %208, %213  : i64
    %224 = llvm.add %223, %218  : i64
    %225 = llvm.getelementptr %222[%224] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %226 = llvm.load %225 : !llvm.ptr<i64>
    %227 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %228 = llvm.mlir.constant(3 : index) : i64
    %229 = llvm.mul %208, %228  : i64
    %230 = llvm.add %229, %221  : i64
    %231 = llvm.add %230, %218  : i64
    %232 = llvm.getelementptr %227[%231] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %232 : !llvm.ptr<i64>
    %233 = llvm.add %218, %217  : i64
    llvm.br ^bb44(%233 : i64)
  ^bb46:  // pred: ^bb44
    %234 = llvm.add %213, %212  : i64
    llvm.br ^bb42(%234 : i64)
  ^bb47:  // pred: ^bb42
    %235 = llvm.add %208, %207  : i64
    llvm.br ^bb40(%235 : i64)
  ^bb48:  // pred: ^bb40
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.null : !llvm.ptr<i32>
    %242 = llvm.getelementptr %241[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i32> to i64
    %244 = llvm.mlir.constant(16 : index) : i64
    %245 = llvm.add %243, %244  : i64
    %246 = llvm.call @malloc(%245) : (i64) -> !llvm.ptr<i8>
    %247 = llvm.bitcast %246 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i32> to i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.sub %244, %249  : i64
    %251 = llvm.add %248, %250  : i64
    %252 = llvm.urem %251, %244  : i64
    %253 = llvm.sub %251, %252  : i64
    %254 = llvm.inttoptr %253 : i64 to !llvm.ptr<i32>
    %255 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %256 = llvm.insertvalue %247, %255[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %254, %256[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.insertvalue %258, %257[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %236, %259[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %237, %260[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %238, %261[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.insertvalue %239, %262[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %237, %263[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %238, %264[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %239, %265[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%268 : i64)
  ^bb49(%271: i64):  // 2 preds: ^bb48, ^bb59
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%273 : i64)
  ^bb51(%276: i64):  // 2 preds: ^bb50, ^bb58
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%278 : i64)
  ^bb53(%281: i64):  // 2 preds: ^bb52, ^bb57
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%283 : i64)
  ^bb55(%286: i64):  // 2 preds: ^bb54, ^bb56
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %288 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.add %271, %276  : i64
    %290 = llvm.add %289, %281  : i64
    %291 = llvm.add %290, %286  : i64
    %292 = llvm.getelementptr %288[%291] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %293 = llvm.load %292 : !llvm.ptr<i32>
    %294 = llvm.sub %12, %293  : i32
    %295 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.add %271, %276  : i64
    %297 = llvm.add %296, %281  : i64
    %298 = llvm.add %297, %286  : i64
    %299 = llvm.getelementptr %295[%298] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %294, %299 : !llvm.ptr<i32>
    %300 = llvm.add %286, %285  : i64
    llvm.br ^bb55(%300 : i64)
  ^bb57:  // pred: ^bb55
    %301 = llvm.add %281, %280  : i64
    llvm.br ^bb53(%301 : i64)
  ^bb58:  // pred: ^bb53
    %302 = llvm.add %276, %275  : i64
    llvm.br ^bb51(%302 : i64)
  ^bb59:  // pred: ^bb51
    %303 = llvm.add %271, %270  : i64
    llvm.br ^bb49(%303 : i64)
  ^bb60:  // pred: ^bb49
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.null : !llvm.ptr<i32>
    %310 = llvm.getelementptr %309[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i32> to i64
    %312 = llvm.mlir.constant(16 : index) : i64
    %313 = llvm.add %311, %312  : i64
    %314 = llvm.call @malloc(%313) : (i64) -> !llvm.ptr<i8>
    %315 = llvm.bitcast %314 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i32> to i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.sub %312, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.urem %319, %312  : i64
    %321 = llvm.sub %319, %320  : i64
    %322 = llvm.inttoptr %321 : i64 to !llvm.ptr<i32>
    %323 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %324 = llvm.insertvalue %315, %323[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %322, %324[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.insertvalue %326, %325[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %304, %327[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %305, %328[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %306, %329[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %307, %330[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %305, %331[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %306, %332[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %307, %333[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %308, %334[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%336 : i64)
  ^bb61(%339: i64):  // 2 preds: ^bb60, ^bb71
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%341 : i64)
  ^bb63(%344: i64):  // 2 preds: ^bb62, ^bb70
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%346 : i64)
  ^bb65(%349: i64):  // 2 preds: ^bb64, ^bb69
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%351 : i64)
  ^bb67(%354: i64):  // 2 preds: ^bb66, ^bb68
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %356 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.add %339, %344  : i64
    %358 = llvm.add %357, %349  : i64
    %359 = llvm.add %358, %354  : i64
    %360 = llvm.getelementptr %356[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.load %360 : !llvm.ptr<i32>
    %362 = llvm.mlir.constant(false) : i1
    %363 = "llvm.intr.abs"(%361, %362) : (i32, i1) -> i32
    %364 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.add %339, %344  : i64
    %366 = llvm.add %365, %349  : i64
    %367 = llvm.add %366, %354  : i64
    %368 = llvm.getelementptr %364[%367] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %363, %368 : !llvm.ptr<i32>
    %369 = llvm.add %354, %353  : i64
    llvm.br ^bb67(%369 : i64)
  ^bb69:  // pred: ^bb67
    %370 = llvm.add %349, %348  : i64
    llvm.br ^bb65(%370 : i64)
  ^bb70:  // pred: ^bb65
    %371 = llvm.add %344, %343  : i64
    llvm.br ^bb63(%371 : i64)
  ^bb71:  // pred: ^bb63
    %372 = llvm.add %339, %338  : i64
    llvm.br ^bb61(%372 : i64)
  ^bb72:  // pred: ^bb61
    %373 = llvm.mlir.constant(5 : index) : i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    %378 = llvm.mlir.null : !llvm.ptr<i32>
    %379 = llvm.getelementptr %378[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %380 = llvm.ptrtoint %379 : !llvm.ptr<i32> to i64
    %381 = llvm.mlir.constant(16 : index) : i64
    %382 = llvm.add %380, %381  : i64
    %383 = llvm.call @malloc(%382) : (i64) -> !llvm.ptr<i8>
    %384 = llvm.bitcast %383 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i32> to i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.sub %381, %386  : i64
    %388 = llvm.add %385, %387  : i64
    %389 = llvm.urem %388, %381  : i64
    %390 = llvm.sub %388, %389  : i64
    %391 = llvm.inttoptr %390 : i64 to !llvm.ptr<i32>
    %392 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %393 = llvm.insertvalue %384, %392[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %394 = llvm.insertvalue %391, %393[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.insertvalue %395, %394[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.insertvalue %373, %396[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %398 = llvm.insertvalue %374, %397[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.insertvalue %375, %398[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.insertvalue %376, %399[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %374, %400[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.insertvalue %375, %401[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %403 = llvm.insertvalue %376, %402[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %377, %403[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%405 : i64)
  ^bb73(%408: i64):  // 2 preds: ^bb72, ^bb83
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%410 : i64)
  ^bb75(%413: i64):  // 2 preds: ^bb74, ^bb82
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%415 : i64)
  ^bb77(%418: i64):  // 2 preds: ^bb76, ^bb81
    %419 = llvm.icmp "slt" %418, %416 : i64
    llvm.cond_br %419, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%420 : i64)
  ^bb79(%423: i64):  // 2 preds: ^bb78, ^bb80
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %425 = llvm.extractvalue %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.add %408, %413  : i64
    %427 = llvm.add %426, %418  : i64
    %428 = llvm.add %427, %423  : i64
    %429 = llvm.getelementptr %425[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %430 = llvm.load %429 : !llvm.ptr<i32>
    %431 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.add %408, %413  : i64
    %433 = llvm.add %432, %418  : i64
    %434 = llvm.add %433, %423  : i64
    %435 = llvm.getelementptr %431[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %430, %435 : !llvm.ptr<i32>
    %436 = llvm.add %423, %422  : i64
    llvm.br ^bb79(%436 : i64)
  ^bb81:  // pred: ^bb79
    %437 = llvm.add %418, %417  : i64
    llvm.br ^bb77(%437 : i64)
  ^bb82:  // pred: ^bb77
    %438 = llvm.add %413, %412  : i64
    llvm.br ^bb75(%438 : i64)
  ^bb83:  // pred: ^bb75
    %439 = llvm.add %408, %407  : i64
    llvm.br ^bb73(%439 : i64)
  ^bb84:  // pred: ^bb73
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%440 : i64)
  ^bb85(%443: i64):  // 2 preds: ^bb84, ^bb95
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%445 : i64)
  ^bb87(%448: i64):  // 2 preds: ^bb86, ^bb94
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%450 : i64)
  ^bb89(%453: i64):  // 2 preds: ^bb88, ^bb93
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%455 : i64)
  ^bb91(%458: i64):  // 2 preds: ^bb90, ^bb92
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.add %443, %460  : i64
    %462 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.add %443, %448  : i64
    %464 = llvm.add %463, %453  : i64
    %465 = llvm.add %464, %458  : i64
    %466 = llvm.getelementptr %462[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.load %466 : !llvm.ptr<i32>
    %468 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.add %461, %448  : i64
    %470 = llvm.add %469, %453  : i64
    %471 = llvm.add %470, %458  : i64
    %472 = llvm.getelementptr %468[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %467, %472 : !llvm.ptr<i32>
    %473 = llvm.add %458, %457  : i64
    llvm.br ^bb91(%473 : i64)
  ^bb93:  // pred: ^bb91
    %474 = llvm.add %453, %452  : i64
    llvm.br ^bb89(%474 : i64)
  ^bb94:  // pred: ^bb89
    %475 = llvm.add %448, %447  : i64
    llvm.br ^bb87(%475 : i64)
  ^bb95:  // pred: ^bb87
    %476 = llvm.add %443, %442  : i64
    llvm.br ^bb85(%476 : i64)
  ^bb96:  // pred: ^bb85
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%477 : i64)
  ^bb97(%480: i64):  // 2 preds: ^bb96, ^bb107
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb98, ^bb108
  ^bb98:  // pred: ^bb97
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%482 : i64)
  ^bb99(%485: i64):  // 2 preds: ^bb98, ^bb106
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb100, ^bb107
  ^bb100:  // pred: ^bb99
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%487 : i64)
  ^bb101(%490: i64):  // 2 preds: ^bb100, ^bb105
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb102, ^bb106
  ^bb102:  // pred: ^bb101
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb103(%492 : i64)
  ^bb103(%495: i64):  // 2 preds: ^bb102, ^bb104
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb104, ^bb105
  ^bb104:  // pred: ^bb103
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.add %480, %497  : i64
    %499 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.add %480, %485  : i64
    %501 = llvm.add %500, %490  : i64
    %502 = llvm.add %501, %495  : i64
    %503 = llvm.getelementptr %499[%502] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %504 = llvm.load %503 : !llvm.ptr<i32>
    %505 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.add %498, %485  : i64
    %507 = llvm.add %506, %490  : i64
    %508 = llvm.add %507, %495  : i64
    %509 = llvm.getelementptr %505[%508] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %504, %509 : !llvm.ptr<i32>
    %510 = llvm.add %495, %494  : i64
    llvm.br ^bb103(%510 : i64)
  ^bb105:  // pred: ^bb103
    %511 = llvm.add %490, %489  : i64
    llvm.br ^bb101(%511 : i64)
  ^bb106:  // pred: ^bb101
    %512 = llvm.add %485, %484  : i64
    llvm.br ^bb99(%512 : i64)
  ^bb107:  // pred: ^bb99
    %513 = llvm.add %480, %479  : i64
    llvm.br ^bb97(%513 : i64)
  ^bb108:  // pred: ^bb97
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb109(%514 : i64)
  ^bb109(%517: i64):  // 2 preds: ^bb108, ^bb119
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb110, ^bb120
  ^bb110:  // pred: ^bb109
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb111(%519 : i64)
  ^bb111(%522: i64):  // 2 preds: ^bb110, ^bb118
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb112, ^bb119
  ^bb112:  // pred: ^bb111
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb113(%524 : i64)
  ^bb113(%527: i64):  // 2 preds: ^bb112, ^bb117
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb114, ^bb118
  ^bb114:  // pred: ^bb113
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb115(%529 : i64)
  ^bb115(%532: i64):  // 2 preds: ^bb114, ^bb116
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb116, ^bb117
  ^bb116:  // pred: ^bb115
    %534 = llvm.mlir.constant(3 : index) : i64
    %535 = llvm.add %517, %534  : i64
    %536 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.add %517, %522  : i64
    %538 = llvm.add %537, %527  : i64
    %539 = llvm.add %538, %532  : i64
    %540 = llvm.getelementptr %536[%539] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %541 = llvm.load %540 : !llvm.ptr<i32>
    %542 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.add %535, %522  : i64
    %544 = llvm.add %543, %527  : i64
    %545 = llvm.add %544, %532  : i64
    %546 = llvm.getelementptr %542[%545] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %541, %546 : !llvm.ptr<i32>
    %547 = llvm.add %532, %531  : i64
    llvm.br ^bb115(%547 : i64)
  ^bb117:  // pred: ^bb115
    %548 = llvm.add %527, %526  : i64
    llvm.br ^bb113(%548 : i64)
  ^bb118:  // pred: ^bb113
    %549 = llvm.add %522, %521  : i64
    llvm.br ^bb111(%549 : i64)
  ^bb119:  // pred: ^bb111
    %550 = llvm.add %517, %516  : i64
    llvm.br ^bb109(%550 : i64)
  ^bb120:  // pred: ^bb109
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%551 : i64)
  ^bb121(%554: i64):  // 2 preds: ^bb120, ^bb131
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%556 : i64)
  ^bb123(%559: i64):  // 2 preds: ^bb122, ^bb130
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%561 : i64)
  ^bb125(%564: i64):  // 2 preds: ^bb124, ^bb129
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%566 : i64)
  ^bb127(%569: i64):  // 2 preds: ^bb126, ^bb128
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %571 = llvm.mlir.constant(4 : index) : i64
    %572 = llvm.add %554, %571  : i64
    %573 = llvm.extractvalue %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.add %554, %559  : i64
    %575 = llvm.add %574, %564  : i64
    %576 = llvm.add %575, %569  : i64
    %577 = llvm.getelementptr %573[%576] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %578 = llvm.load %577 : !llvm.ptr<i32>
    %579 = llvm.extractvalue %404[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.add %572, %559  : i64
    %581 = llvm.add %580, %564  : i64
    %582 = llvm.add %581, %569  : i64
    %583 = llvm.getelementptr %579[%582] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %578, %583 : !llvm.ptr<i32>
    %584 = llvm.add %569, %568  : i64
    llvm.br ^bb127(%584 : i64)
  ^bb129:  // pred: ^bb127
    %585 = llvm.add %564, %563  : i64
    llvm.br ^bb125(%585 : i64)
  ^bb130:  // pred: ^bb125
    %586 = llvm.add %559, %558  : i64
    llvm.br ^bb123(%586 : i64)
  ^bb131:  // pred: ^bb123
    %587 = llvm.add %554, %553  : i64
    llvm.br ^bb121(%587 : i64)
  ^bb132:  // pred: ^bb121
    %588 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %589 = llvm.insertvalue %144, %588[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %590 = llvm.insertvalue %404, %589[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %590 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

