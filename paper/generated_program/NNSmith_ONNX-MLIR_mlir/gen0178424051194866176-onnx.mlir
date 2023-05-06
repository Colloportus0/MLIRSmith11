module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0", "v0_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(-1 : i64) : i64
    %14 = llvm.mlir.constant(2147483647 : i32) : i32
    %15 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.null : !llvm.ptr<i32>
    %45 = llvm.getelementptr %44[%43] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %46 = llvm.ptrtoint %45 : !llvm.ptr<i32> to i64
    %47 = llvm.mlir.constant(16 : index) : i64
    %48 = llvm.add %46, %47  : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i32> to i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.sub %47, %52  : i64
    %54 = llvm.add %51, %53  : i64
    %55 = llvm.urem %54, %47  : i64
    %56 = llvm.sub %54, %55  : i64
    %57 = llvm.inttoptr %56 : i64 to !llvm.ptr<i32>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %59 = llvm.insertvalue %50, %58[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %38, %62[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %39, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %40, %64[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %41, %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.insertvalue %39, %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.insertvalue %40, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %41, %68[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %42, %69[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%71 : i64)
  ^bb1(%74: i64):  // 2 preds: ^bb0, ^bb11
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%76 : i64)
  ^bb3(%79: i64):  // 2 preds: ^bb2, ^bb10
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%81 : i64)
  ^bb5(%84: i64):  // 2 preds: ^bb4, ^bb9
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%86 : i64)
  ^bb7(%89: i64):  // 2 preds: ^bb6, ^bb8
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %91 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.add %74, %79  : i64
    %93 = llvm.add %92, %84  : i64
    %94 = llvm.add %93, %89  : i64
    %95 = llvm.getelementptr %91[%94] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %96 = llvm.load %95 : !llvm.ptr<i32>
    %97 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %74, %98  : i64
    %100 = llvm.add %99, %79  : i64
    %101 = llvm.add %100, %84  : i64
    %102 = llvm.add %101, %89  : i64
    %103 = llvm.getelementptr %97[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %96, %103 : !llvm.ptr<i32>
    %104 = llvm.add %89, %88  : i64
    llvm.br ^bb7(%104 : i64)
  ^bb9:  // pred: ^bb7
    %105 = llvm.add %84, %83  : i64
    llvm.br ^bb5(%105 : i64)
  ^bb10:  // pred: ^bb5
    %106 = llvm.add %79, %78  : i64
    llvm.br ^bb3(%106 : i64)
  ^bb11:  // pred: ^bb3
    %107 = llvm.add %74, %73  : i64
    llvm.br ^bb1(%107 : i64)
  ^bb12:  // pred: ^bb1
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%108 : i64)
  ^bb13(%111: i64):  // 2 preds: ^bb12, ^bb23
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%113 : i64)
  ^bb15(%116: i64):  // 2 preds: ^bb14, ^bb22
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%118 : i64)
  ^bb17(%121: i64):  // 2 preds: ^bb16, ^bb21
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%123 : i64)
  ^bb19(%126: i64):  // 2 preds: ^bb18, ^bb20
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.add %116, %128  : i64
    %130 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.add %111, %116  : i64
    %132 = llvm.add %131, %121  : i64
    %133 = llvm.add %132, %126  : i64
    %134 = llvm.getelementptr %130[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %111, %137  : i64
    %139 = llvm.add %138, %129  : i64
    %140 = llvm.add %139, %121  : i64
    %141 = llvm.add %140, %126  : i64
    %142 = llvm.getelementptr %136[%141] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %135, %142 : !llvm.ptr<i32>
    %143 = llvm.add %126, %125  : i64
    llvm.br ^bb19(%143 : i64)
  ^bb21:  // pred: ^bb19
    %144 = llvm.add %121, %120  : i64
    llvm.br ^bb17(%144 : i64)
  ^bb22:  // pred: ^bb17
    %145 = llvm.add %116, %115  : i64
    llvm.br ^bb15(%145 : i64)
  ^bb23:  // pred: ^bb15
    %146 = llvm.add %111, %110  : i64
    llvm.br ^bb13(%146 : i64)
  ^bb24:  // pred: ^bb13
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.null : !llvm.ptr<i32>
    %153 = llvm.getelementptr %152[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i32> to i64
    %155 = llvm.mlir.constant(16 : index) : i64
    %156 = llvm.add %154, %155  : i64
    %157 = llvm.call @malloc(%156) : (i64) -> !llvm.ptr<i8>
    %158 = llvm.bitcast %157 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i32> to i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.sub %155, %160  : i64
    %162 = llvm.add %159, %161  : i64
    %163 = llvm.urem %162, %155  : i64
    %164 = llvm.sub %162, %163  : i64
    %165 = llvm.inttoptr %164 : i64 to !llvm.ptr<i32>
    %166 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %167 = llvm.insertvalue %158, %166[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %147, %170[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.insertvalue %148, %171[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %173 = llvm.insertvalue %149, %172[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %174 = llvm.insertvalue %148, %173[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %175 = llvm.insertvalue %149, %174[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %176 = llvm.insertvalue %150, %175[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%177 : i64)
  ^bb25(%180: i64):  // 2 preds: ^bb24, ^bb32
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%182 : i64)
  ^bb27(%185: i64):  // 2 preds: ^bb26, ^bb31
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%187 : i64)
  ^bb29(%190: i64):  // 2 preds: ^bb28, ^bb30
    %191 = llvm.icmp "slt" %190, %188 : i64
    llvm.cond_br %191, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %192 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mul %180, %193  : i64
    %195 = llvm.add %194, %185  : i64
    %196 = llvm.add %195, %190  : i64
    %197 = llvm.getelementptr %192[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %197 : !llvm.ptr<i32>
    %198 = llvm.add %190, %189  : i64
    llvm.br ^bb29(%198 : i64)
  ^bb31:  // pred: ^bb29
    %199 = llvm.add %185, %184  : i64
    llvm.br ^bb27(%199 : i64)
  ^bb32:  // pred: ^bb27
    %200 = llvm.add %180, %179  : i64
    llvm.br ^bb25(%200 : i64)
  ^bb33:  // pred: ^bb25
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%201 : i64)
  ^bb34(%204: i64):  // 2 preds: ^bb33, ^bb44
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%206 : i64)
  ^bb36(%209: i64):  // 2 preds: ^bb35, ^bb43
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%211 : i64)
  ^bb38(%214: i64):  // 2 preds: ^bb37, ^bb42
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%216 : i64)
  ^bb40(%219: i64):  // 2 preds: ^bb39, ^bb41
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %221 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.mlir.constant(2 : index) : i64
    %223 = llvm.mul %204, %222  : i64
    %224 = llvm.add %223, %209  : i64
    %225 = llvm.add %224, %214  : i64
    %226 = llvm.add %225, %219  : i64
    %227 = llvm.getelementptr %221[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mul %204, %230  : i64
    %232 = llvm.add %231, %209  : i64
    %233 = llvm.add %232, %214  : i64
    %234 = llvm.getelementptr %229[%233] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %235 = llvm.load %234 : !llvm.ptr<i32>
    %236 = llvm.icmp "slt" %235, %228 : i32
    %237 = llvm.select %236, %235, %228 : i1, i32
    %238 = llvm.extractvalue %176[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %239 = llvm.mlir.constant(2 : index) : i64
    %240 = llvm.mul %204, %239  : i64
    %241 = llvm.add %240, %209  : i64
    %242 = llvm.add %241, %214  : i64
    %243 = llvm.getelementptr %238[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %237, %243 : !llvm.ptr<i32>
    %244 = llvm.add %219, %218  : i64
    llvm.br ^bb40(%244 : i64)
  ^bb42:  // pred: ^bb40
    %245 = llvm.add %214, %213  : i64
    llvm.br ^bb38(%245 : i64)
  ^bb43:  // pred: ^bb38
    %246 = llvm.add %209, %208  : i64
    llvm.br ^bb36(%246 : i64)
  ^bb44:  // pred: ^bb36
    %247 = llvm.add %204, %203  : i64
    llvm.br ^bb34(%247 : i64)
  ^bb45:  // pred: ^bb34
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.null : !llvm.ptr<i1>
    %255 = llvm.getelementptr %254[%253] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %256 = llvm.ptrtoint %255 : !llvm.ptr<i1> to i64
    %257 = llvm.mlir.constant(16 : index) : i64
    %258 = llvm.add %256, %257  : i64
    %259 = llvm.call @malloc(%258) : (i64) -> !llvm.ptr<i8>
    %260 = llvm.bitcast %259 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %261 = llvm.ptrtoint %260 : !llvm.ptr<i1> to i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.sub %257, %262  : i64
    %264 = llvm.add %261, %263  : i64
    %265 = llvm.urem %264, %257  : i64
    %266 = llvm.sub %264, %265  : i64
    %267 = llvm.inttoptr %266 : i64 to !llvm.ptr<i1>
    %268 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %269 = llvm.insertvalue %260, %268[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %267, %269[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.insertvalue %271, %270[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %248, %272[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %249, %273[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %250, %274[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %251, %275[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %249, %276[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %250, %277[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %251, %278[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %252, %279[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.mlir.constant(0 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%281 : i64)
  ^bb46(%284: i64):  // 2 preds: ^bb45, ^bb56
    %285 = llvm.icmp "slt" %284, %282 : i64
    llvm.cond_br %285, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%286 : i64)
  ^bb48(%289: i64):  // 2 preds: ^bb47, ^bb55
    %290 = llvm.icmp "slt" %289, %287 : i64
    llvm.cond_br %290, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%291 : i64)
  ^bb50(%294: i64):  // 2 preds: ^bb49, ^bb54
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%296 : i64)
  ^bb52(%299: i64):  // 2 preds: ^bb51, ^bb53
    %300 = llvm.icmp "slt" %299, %297 : i64
    llvm.cond_br %300, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %301 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.mlir.constant(2 : index) : i64
    %303 = llvm.mul %284, %302  : i64
    %304 = llvm.add %303, %289  : i64
    %305 = llvm.add %304, %294  : i64
    %306 = llvm.add %305, %299  : i64
    %307 = llvm.getelementptr %301[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %308 = llvm.load %307 : !llvm.ptr<i32>
    %309 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mul %284, %310  : i64
    %312 = llvm.add %311, %289  : i64
    %313 = llvm.add %312, %294  : i64
    %314 = llvm.add %313, %299  : i64
    %315 = llvm.getelementptr %309[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.icmp "sgt" %308, %316 : i32
    %318 = llvm.extractvalue %280[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mul %284, %319  : i64
    %321 = llvm.add %320, %289  : i64
    %322 = llvm.add %321, %294  : i64
    %323 = llvm.add %322, %299  : i64
    %324 = llvm.getelementptr %318[%323] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %317, %324 : !llvm.ptr<i1>
    %325 = llvm.add %299, %298  : i64
    llvm.br ^bb52(%325 : i64)
  ^bb54:  // pred: ^bb52
    %326 = llvm.add %294, %293  : i64
    llvm.br ^bb50(%326 : i64)
  ^bb55:  // pred: ^bb50
    %327 = llvm.add %289, %288  : i64
    llvm.br ^bb48(%327 : i64)
  ^bb56:  // pred: ^bb48
    %328 = llvm.add %284, %283  : i64
    llvm.br ^bb46(%328 : i64)
  ^bb57:  // pred: ^bb46
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.null : !llvm.ptr<i64>
    %334 = llvm.getelementptr %333[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i64> to i64
    %336 = llvm.mlir.constant(16 : index) : i64
    %337 = llvm.add %335, %336  : i64
    %338 = llvm.call @malloc(%337) : (i64) -> !llvm.ptr<i8>
    %339 = llvm.bitcast %338 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.sub %336, %341  : i64
    %343 = llvm.add %340, %342  : i64
    %344 = llvm.urem %343, %336  : i64
    %345 = llvm.sub %343, %344  : i64
    %346 = llvm.inttoptr %345 : i64 to !llvm.ptr<i64>
    %347 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %348 = llvm.insertvalue %339, %347[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %349 = llvm.insertvalue %346, %348[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.insertvalue %350, %349[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %352 = llvm.insertvalue %329, %351[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %353 = llvm.insertvalue %330, %352[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %331, %353[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.insertvalue %330, %354[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %356 = llvm.insertvalue %331, %355[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %332, %356[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%358 : i64)
  ^bb58(%361: i64):  // 2 preds: ^bb57, ^bb65
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%363 : i64)
  ^bb60(%366: i64):  // 2 preds: ^bb59, ^bb64
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%368 : i64)
  ^bb62(%371: i64):  // 2 preds: ^bb61, ^bb63
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %373 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %374 = llvm.add %361, %366  : i64
    %375 = llvm.add %374, %371  : i64
    %376 = llvm.getelementptr %373[%375] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %376 : !llvm.ptr<i64>
    %377 = llvm.add %371, %370  : i64
    llvm.br ^bb62(%377 : i64)
  ^bb64:  // pred: ^bb62
    %378 = llvm.add %366, %365  : i64
    llvm.br ^bb60(%378 : i64)
  ^bb65:  // pred: ^bb60
    %379 = llvm.add %361, %360  : i64
    llvm.br ^bb58(%379 : i64)
  ^bb66:  // pred: ^bb58
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%380 : i64)
  ^bb67(%383: i64):  // 2 preds: ^bb66, ^bb77
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%385 : i64)
  ^bb69(%388: i64):  // 2 preds: ^bb68, ^bb76
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%390 : i64)
  ^bb71(%393: i64):  // 2 preds: ^bb70, ^bb75
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%395 : i64)
  ^bb73(%398: i64):  // 2 preds: ^bb72, ^bb74
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %400 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mul %383, %401  : i64
    %403 = llvm.add %402, %388  : i64
    %404 = llvm.add %403, %393  : i64
    %405 = llvm.add %404, %398  : i64
    %406 = llvm.getelementptr %400[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %407 = llvm.load %406 : !llvm.ptr<i32>
    %408 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.add %383, %393  : i64
    %410 = llvm.add %409, %398  : i64
    %411 = llvm.getelementptr %408[%410] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %412 = llvm.load %411 : !llvm.ptr<i64>
    %413 = llvm.icmp "slt" %412, %12 : i64
    %414 = llvm.select %413, %12, %412 : i1, i64
    %415 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %383, %416  : i64
    %418 = llvm.add %417, %414  : i64
    %419 = llvm.add %418, %393  : i64
    %420 = llvm.add %419, %398  : i64
    %421 = llvm.getelementptr %415[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %422 = llvm.load %421 : !llvm.ptr<i32>
    %423 = llvm.icmp "sgt" %407, %422 : i32
    %424 = llvm.select %423, %388, %414 : i1, i64
    %425 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %426 = llvm.add %383, %393  : i64
    %427 = llvm.add %426, %398  : i64
    %428 = llvm.getelementptr %425[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %424, %428 : !llvm.ptr<i64>
    %429 = llvm.add %398, %397  : i64
    llvm.br ^bb73(%429 : i64)
  ^bb75:  // pred: ^bb73
    %430 = llvm.add %393, %392  : i64
    llvm.br ^bb71(%430 : i64)
  ^bb76:  // pred: ^bb71
    %431 = llvm.add %388, %387  : i64
    llvm.br ^bb69(%431 : i64)
  ^bb77:  // pred: ^bb69
    %432 = llvm.add %383, %382  : i64
    llvm.br ^bb67(%432 : i64)
  ^bb78:  // pred: ^bb67
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.mlir.null : !llvm.ptr<i1>
    %438 = llvm.getelementptr %437[%433] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %439 = llvm.ptrtoint %438 : !llvm.ptr<i1> to i64
    %440 = llvm.mlir.constant(16 : index) : i64
    %441 = llvm.add %439, %440  : i64
    %442 = llvm.call @malloc(%441) : (i64) -> !llvm.ptr<i8>
    %443 = llvm.bitcast %442 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %444 = llvm.ptrtoint %443 : !llvm.ptr<i1> to i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.sub %440, %445  : i64
    %447 = llvm.add %444, %446  : i64
    %448 = llvm.urem %447, %440  : i64
    %449 = llvm.sub %447, %448  : i64
    %450 = llvm.inttoptr %449 : i64 to !llvm.ptr<i1>
    %451 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %452 = llvm.insertvalue %443, %451[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %453 = llvm.insertvalue %450, %452[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.insertvalue %454, %453[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %456 = llvm.insertvalue %433, %455[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %457 = llvm.insertvalue %434, %456[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %458 = llvm.insertvalue %435, %457[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %459 = llvm.insertvalue %434, %458[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %460 = llvm.insertvalue %435, %459[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %461 = llvm.insertvalue %436, %460[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%462 : i64)
  ^bb79(%465: i64):  // 2 preds: ^bb78, ^bb86
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb80, ^bb87
  ^bb80:  // pred: ^bb79
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%467 : i64)
  ^bb81(%470: i64):  // 2 preds: ^bb80, ^bb85
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb82, ^bb86
  ^bb82:  // pred: ^bb81
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%472 : i64)
  ^bb83(%475: i64):  // 2 preds: ^bb82, ^bb84
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb84, ^bb85
  ^bb84:  // pred: ^bb83
    %477 = llvm.extractvalue %357[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %478 = llvm.add %465, %470  : i64
    %479 = llvm.add %478, %475  : i64
    %480 = llvm.getelementptr %477[%479] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %481 = llvm.load %480 : !llvm.ptr<i64>
    %482 = llvm.icmp "ne" %481, %12 : i64
    %483 = llvm.extractvalue %461[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %484 = llvm.add %465, %470  : i64
    %485 = llvm.add %484, %475  : i64
    %486 = llvm.getelementptr %483[%485] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %482, %486 : !llvm.ptr<i1>
    %487 = llvm.add %475, %474  : i64
    llvm.br ^bb83(%487 : i64)
  ^bb85:  // pred: ^bb83
    %488 = llvm.add %470, %469  : i64
    llvm.br ^bb81(%488 : i64)
  ^bb86:  // pred: ^bb81
    %489 = llvm.add %465, %464  : i64
    llvm.br ^bb79(%489 : i64)
  ^bb87:  // pred: ^bb79
    %490 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    %491 = llvm.insertvalue %176, %490[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %492 = llvm.insertvalue %280, %491[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %493 = llvm.insertvalue %461, %492[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %493 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0", "v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(4 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(3 : i64) : i64
    %105 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %87[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %88[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(3 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %133 = llvm.getelementptr %119[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.getelementptr %120[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.getelementptr %51[%136] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %137 : !llvm.ptr<ptr<i8>>
    %138 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %138 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<201 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<201 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

